package com.ringcentral.helloworld;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private HelloWorld helloWorldInterface;

    static {
        System.loadLibrary("gnustl_shared");
        System.loadLibrary("helloworld");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        helloWorldInterface = HelloWorld.createWithSandboxManager(new SandboxManagerImpl());
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();


        return super.onOptionsItemSelected(item);
    }

    public void helloWorldButtonWasPressed(View view) {
        String myString = helloWorldInterface.getHelloWorld() + "\n";
        TextView t = (TextView) findViewById(R.id.helloWorldText);
        t.setText(myString + t.getText());
    }

    public void documentButtonWasPressed(View view) {
        String myString = helloWorldInterface.getSandboxPath() + "\n";
        TextView t = (TextView) findViewById(R.id.helloWorldText);
        t.setText(myString + t.getText());
    }
}
