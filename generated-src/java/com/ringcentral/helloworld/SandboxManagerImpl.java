package com.ringcentral.helloworld;

import android.content.Context;
import android.os.Environment;

import java.io.File;

/**
 * Created by albert.gu on 8/5/16.
 */
public class SandboxManagerImpl extends SandboxManager{

    @Override
    public String getSandboxPath() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS).getPath();
    }
}
