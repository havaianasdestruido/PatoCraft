package com.microsoft.xbox.toolkit;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public enum AsyncActionStatus {
    SUCCESS,
    FAIL,
    NO_CHANGE,
    NO_OP_SUCCESS,
    NO_OP_FAIL;

    private static final AsyncActionStatus[][] MERGE_MATRIX = {new AsyncActionStatus[]{SUCCESS, FAIL, SUCCESS, SUCCESS, FAIL}, new AsyncActionStatus[]{FAIL, FAIL, FAIL, FAIL, FAIL}, new AsyncActionStatus[]{SUCCESS, FAIL, NO_CHANGE, NO_OP_SUCCESS, NO_OP_FAIL}, new AsyncActionStatus[]{SUCCESS, FAIL, NO_OP_SUCCESS, NO_OP_SUCCESS, NO_OP_FAIL}, new AsyncActionStatus[]{FAIL, FAIL, NO_OP_FAIL, NO_OP_FAIL, NO_OP_FAIL}};

    public static boolean getIsFail(AsyncActionStatus status) {
        return status == FAIL || status == NO_OP_FAIL;
    }

    public static AsyncActionStatus merge(AsyncActionStatus x, AsyncActionStatus... y) {
        AsyncActionStatus left = x;
        for (AsyncActionStatus right : y) {
            left = MERGE_MATRIX[left.ordinal()][right.ordinal()];
        }
        return left;
    }
}
