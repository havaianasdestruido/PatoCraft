package com.microsoft.xbox.xle.app.adapter;

import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderPhoneInviteScreenViewModel;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderPhoneInviteScreenAdapater extends AdapterBase {
    private FriendFinderPhoneInviteListAdapter contactsListAdapter;
    private ListView contactsListView;
    private FrameLayout loadingLayout;
    private CustomTypefaceTextView subtitleTextView;
    private CustomTypefaceTextView titleTextView;
    private FriendFinderPhoneInviteScreenViewModel viewModel;

    public FriendFinderPhoneInviteScreenAdapater(FriendFinderPhoneInviteScreenViewModel viewModel) {
        super(viewModel);
        XLEAssert.fail("This isn't supported yet.");
        this.viewModel = viewModel;
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_suggestions_title);
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_suggestions_subtitle);
        this.contactsListView = (ListView) findViewById(R.id.friendfinder_suggestions_list);
        this.loadingLayout = (FrameLayout) findViewById(R.id.friendfinder_suggestions_loading);
        XLEAssert.assertNotNull(this.titleTextView);
        XLEAssert.assertNotNull(this.subtitleTextView);
        XLEAssert.assertNotNull(this.contactsListView);
        XLEAssert.assertNotNull(this.loadingLayout);
        this.titleTextView.setText(R.string.FriendFinder_PhoneInviteFriends_Dialog_Title);
        String subtitle = XboxTcuiSdk.getResources().getString(R.string.FriendFinder_PhoneInviteFriends_Dialog_Text);
        this.subtitleTextView.setText(subtitle.replace("-", "\n\n"));
        this.contactsListView.setChoiceMode(2);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        this.contactsListAdapter = new FriendFinderPhoneInviteListAdapter(XboxTcuiSdk.getActivity(), R.layout.friendfinder_phone_invite_list_item);
        this.contactsListView.setAdapter((ListAdapter) this.contactsListAdapter);
        this.contactsListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderPhoneInviteScreenAdapater.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                parent.getAdapter().getView(position, view, parent);
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        this.loadingLayout.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        this.contactsListAdapter.clear();
        this.contactsListAdapter.addAll(this.viewModel.getContacts());
        this.contactsListAdapter.notifyDataSetChanged();
    }
}
