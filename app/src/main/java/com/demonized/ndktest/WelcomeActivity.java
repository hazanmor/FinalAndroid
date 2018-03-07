package com.demonized.ndktest;

import android.app.Activity;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

public class WelcomeActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_welcome);
        ((TextView)(findViewById(R.id.text))).setText(helloJNI());
    }

    public native String helloJNI();

    static{
        System.loadLibrary("helloJNI");
    }
}
