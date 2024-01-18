package com.androidappstudy.finalproject_android;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager2.adapter.FragmentStateAdapter;

public class AboutAdapter extends FragmentStateAdapter {
    public int mCount;

    public AboutAdapter(FragmentActivity fa, int count) {
        super(fa);
        mCount = count;
    }

    @NonNull
    @Override
    public Fragment createFragment(int position) {
        int index = getRealPosition(position);

        if(index==0) return new AboutFragment1();
        else if(index==1) return new AboutFragment2();
        else if(index==2) return new com.androidappstudy.finalproject_android.AboutFragment3();
        else return new AboutFragment4();
    }

    @Override
    public int getItemCount() {
        return 2000;
    }

    public int getRealPosition(int position) { return position % mCount; }

}

