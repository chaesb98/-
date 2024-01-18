package com.androidappstudy.finalproject_android.retrofit;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

public interface MemberApi {
    @POST("/appsignin")
    Call<Boolean> postUser(@Body Member member);

    @POST("/appsignup")
    Call<Boolean> createUser(@Body Member member);
}
