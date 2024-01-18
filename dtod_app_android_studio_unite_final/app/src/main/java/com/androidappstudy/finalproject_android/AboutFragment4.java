package com.androidappstudy.finalproject_android;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

public class AboutFragment4 extends Fragment {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(
                R.layout.activity_aboutframe4, container, false);

        Button goStartButton = rootView.findViewById(R.id.goStart);
        goStartButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // goStart 버튼이 클릭되었을 때 실행되는 부분

                // 로그인 액티비티로 이동하는 Intent 생성
                Intent loginIntent = new Intent(getActivity(), SecondActivity.class);
                startActivity(loginIntent);
            }
        });

        return rootView;
    }
}