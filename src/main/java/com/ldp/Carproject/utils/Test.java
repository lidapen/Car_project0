package com.ldp.Carproject.utils;

import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;
@Component
public class Test {
    public static final String PREFIX = "WL";
    private static long code;
    public  synchronized String nextCode() {
        code++;
        String str = new SimpleDateFormat("yyyyMM").format(new Date());
        long m = Long.parseLong((str)) * 10000;
        m += code;
        return PREFIX + m;
    }
}