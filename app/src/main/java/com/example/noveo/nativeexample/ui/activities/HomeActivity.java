package com.example.noveo.nativeexample.ui.activities;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

import com.example.noveo.nativeexample.R;
import com.example.noveo.nativeexample.utils.NDKUtils;


public class HomeActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);
        String message = NDKUtils.getMessage("Nik");
        ((TextView) findViewById(R.id.message)).setText(message);
    }
}
