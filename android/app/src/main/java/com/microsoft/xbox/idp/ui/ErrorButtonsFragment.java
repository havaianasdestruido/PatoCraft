package com.microsoft.xbox.idp.ui;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.microsoft.xbox.idp.R;
import com.microsoft.xbox.idp.compat.BaseFragment;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class ErrorButtonsFragment extends BaseFragment implements View.OnClickListener {
    public static final String ARG_LEFT_ERROR_BUTTON_STRING_ID = "ARG_LEFT_ERROR_BUTTON_STRING_ID";
    private static final Callbacks NO_OP_CALLBACKS = new Callbacks() { // from class: com.microsoft.xbox.idp.ui.ErrorButtonsFragment.1
        @Override // com.microsoft.xbox.idp.ui.ErrorButtonsFragment.Callbacks
        public void onClickedLeftButton() {
        }

        @Override // com.microsoft.xbox.idp.ui.ErrorButtonsFragment.Callbacks
        public void onClickedRightButton() {
        }
    };
    private Callbacks callbacks = NO_OP_CALLBACKS;

    public interface Callbacks {
        void onClickedLeftButton();

        void onClickedRightButton();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.callbacks = (Callbacks) activity;
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.callbacks = NO_OP_CALLBACKS;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.xbid_fragment_error_buttons, container, false);
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Button leftButton = (Button) view.findViewById(R.id.xbid_error_left_button);
        leftButton.setOnClickListener(this);
        view.findViewById(R.id.xbid_error_right_button).setOnClickListener(this);
        Bundle args = getArguments();
        if (args != null && args.containsKey(ARG_LEFT_ERROR_BUTTON_STRING_ID)) {
            leftButton.setText(args.getInt(ARG_LEFT_ERROR_BUTTON_STRING_ID));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == R.id.xbid_error_left_button) {
            this.callbacks.onClickedLeftButton();
        } else if (id == R.id.xbid_error_right_button) {
            this.callbacks.onClickedRightButton();
        }
    }
}
