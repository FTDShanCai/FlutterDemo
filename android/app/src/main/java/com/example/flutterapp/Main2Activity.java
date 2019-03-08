package com.example.flutterapp;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.WindowManager;

import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;
import io.flutter.view.FlutterView;

public class Main2Activity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        WindowManager.LayoutParams matchParent = new WindowManager.LayoutParams(-1, -1);
        FlutterView flutterView= new FlutterView(this,null,null);
        flutterView.setInitialRoute(FlutterPluginAct.CHANNEL);
        flutterView.setLayoutParams(matchParent);
        setContentView(flutterView);
    }
}
