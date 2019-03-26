package com.example.flutterapp;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/**
 * @author ddc
 * 邮箱: 931952032@qq.com
 * <p>description:
 */
public class OneActivity extends AppCompatActivity {
    TextView tv;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activityone);

        tv = findViewById(R.id.tv);
        String message = getIntent().getStringExtra("flutter");
        if (!TextUtils.isEmpty(message)) {
            tv.setText(message);
        }

        tv.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
//                Intent intent = new Intent(OneActivity.this, Main2Activity.class);
//                startActivity(intent);
            }
        });
    }
}
