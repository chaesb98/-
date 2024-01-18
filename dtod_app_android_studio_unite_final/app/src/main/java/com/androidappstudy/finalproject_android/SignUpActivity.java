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

public class SignUpActivity extends AppCompatActivity {

    private final String TAG = getClass().getSimpleName();
    Button signUpDone, backLogin;
    EditText inputId, inputPassword, inputName, inputEmail;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_signup);

        ActionBar actionBar = getSupportActionBar();
        actionBar.hide();

        inputId = (EditText)findViewById(R.id.inputId);
        inputPassword = (EditText)findViewById(R.id.inputPassword);
        inputName = (EditText)findViewById(R.id.inputName);
        inputEmail = (EditText)findViewById(R.id.inputEmail);

        signUpDone = (Button) findViewById(R.id.signUpDone);
        backLogin = (Button) findViewById(R.id.backLogin);

        backLogin.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(),com.androidappstudy.finalproject_android.LoginActivity.class); // MainActivity에 로그인 페이지 넣기
                startActivity(intent);
            }
        });
        signUpDone.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String id = inputId.getText().toString();
                String password = inputPassword.getText().toString();
                String name = inputName.getText().toString();
                String email = inputEmail.getText().toString();

                Member signUpInfo = new Member();
                signUpInfo.setUserId(id);
                signUpInfo.setUserPassword(password);
                signUpInfo.setUserName(name);
                signUpInfo.setUserEmail(email);

                Moshi moshi = new Moshi.Builder().build();

                Retrofit retrofit = new Retrofit.Builder()
                        .baseUrl("http://192.168.0.30:9003/")
                        .addConverterFactory(MoshiConverterFactory.create(moshi))
                        .build();

                MemberApi api = retrofit.create(MemberApi.class);

                Call<Boolean> call = api.createUser(signUpInfo);
                call.enqueue(new Callback<Boolean>() {
                    @Override
                    public void onResponse(Call<Boolean> call, Response<Boolean> response) {
                        boolean signUpSuccess = response.body();

                        if(signUpSuccess){
                            Intent intent = new Intent(getApplicationContext(), com.androidappstudy.finalproject_android.LoginActivity.class);
                            startActivity(intent);
                            finish();
                        } else {
                            Toast.makeText(getApplicationContext(), "회원가입에 실패했습니다!", Toast.LENGTH_SHORT).show();
                        }
                    }

                    @Override
                    public void onFailure(Call<Boolean> call, Throwable t) {
                        Log.d(TAG, "Fail msg : " + t.getMessage());
                        Toast.makeText(getApplicationContext(), "회원가입에 실패했습니다!", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
}
