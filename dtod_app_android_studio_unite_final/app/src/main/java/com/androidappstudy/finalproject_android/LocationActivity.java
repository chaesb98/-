package com.androidappstudy.finalproject_android;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;

public class LocationActivity extends AppCompatActivity {



    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_location);

    ImageButton btnGoHome = (ImageButton)findViewById(R.id.btnGoHome);
        btnGoHome.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(getApplicationContext(), MainActivity.class);
            startActivity(intent);
        }
    });

    ImageButton btnInt = (ImageButton)findViewById(R.id.btnInt);
        btnInt.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(getApplicationContext(), AboutActivity.class);
            startActivity(intent);
        }
    });

    ImageButton btnSlide = (ImageButton)findViewById(R.id.btnSlide);
        btnSlide.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(getApplicationContext(), ServiceActivity.class);
            startActivity(intent);
        }
    });

        ImageButton btnRoad = (ImageButton)findViewById(R.id.btnRoad);
        btnRoad.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), LocationActivity.class);
                startActivity(intent);
            }
        });

    ImageButton btnMyPage = (ImageButton)findViewById(R.id.btnMyPage);
        btnMyPage.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View view) {
            Intent intent = new Intent(getApplicationContext(), LoginActivity.class);
            startActivity(intent);
        }
    });

        // Fragment를 추가하는 소스를 코딩해 줍니다!
        if(savedInstanceState == null){
            MainFragment mainFragment = new MainFragment();
            // tag: 식별 명칭은 "main"으로 처리합니다.
            getSupportFragmentManager().beginTransaction().replace(R.id.mainFragment, mainFragment, "main").commit();
        }


        ActionBar actionBar = getSupportActionBar();
        actionBar.hide();


    }

}
