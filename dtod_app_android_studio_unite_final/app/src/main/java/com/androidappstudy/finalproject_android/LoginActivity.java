package com.androidappstudy.finalproject_android;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

import com.androidappstudy.finalproject_android.retrofit.Member;
import com.androidappstudy.finalproject_android.retrofit.MemberApi;
import com.squareup.moshi.Moshi;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;

public class LoginActivity extends AppCompatActivity {

    private final String TAG = getClass().getSimpleName();

    Button GoSignUpPage, btnSignIn;
    EditText signInId, signInPw;



    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        signInId = (EditText)findViewById(R.id.signInId);
        signInPw = (EditText)findViewById(R.id.signInPw);

        GoSignUpPage = (Button) findViewById(R.id.GoSignUpPage); // 회원 가입
        btnSignIn = (Button) findViewById(R.id.btnSignIn); // 로그인

        // 회원가입 버튼 누르면 페이지 이동
        GoSignUpPage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), SignUpActivity.class);
                startActivity(intent);
            }
        });

        btnSignIn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = signInId.getText().toString();
                String password = signInPw.getText().toString();

                Member loginInfo = new Member();
                loginInfo.setUserId(id);
                loginInfo.setUserPassword(password);

                Moshi moshi = new Moshi.Builder().build();

                String json = moshi.adapter(Member.class).indent(" ").toJson(loginInfo);
                System.out.println(json);

                // Retrofit 객체  생성 및 MoshiConverter 추가
                Retrofit retrofit = new Retrofit.Builder()
                        .baseUrl("http://192.168.0.30:9003/")
                        .addConverterFactory(MoshiConverterFactory.create(moshi)).build();
                MemberApi api = retrofit.create(MemberApi.class);

                Call<Boolean> call = api.postUser(loginInfo);
                call.enqueue(new Callback<Boolean>() {
                    @Override
                    public void onResponse(Call<Boolean> call, Response<Boolean> response) {
                        if(response.isSuccessful()){
                            boolean userExists = response.body();
                            if(userExists){
                                Intent intent = new Intent(getApplicationContext(), MainActivity.class); // SecondActivity를 MainActivity로 바꿔야함
                                startActivity(intent);
                                Toast.makeText(getApplicationContext(), "로그인 되었습니다!", Toast.LENGTH_SHORT).show();
                                finish();
                            } else{
                                Toast.makeText(getApplicationContext(), "아이디 혹은 비밀번호가 일치하지 않습니다!", Toast.LENGTH_SHORT).show();
                            }
                        }else{
                            Log.d(TAG, "Status Code : "+response.code());
                        }
                    }

                    @Override
                    public void onFailure(Call<Boolean> call, Throwable t) {
                        Log.d(TAG, "Fail msg : "+t.getMessage());
                    }
                });
            }
        });

        ActionBar actionBar = getSupportActionBar();
        actionBar.hide();
    }

}
