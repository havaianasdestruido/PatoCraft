package com.microsoft.xbox.xle.app.adapter;

import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.toolkit.ui.XLEListView;
import com.microsoft.xbox.xle.app.activity.FriendFinder.FriendFinderSuggestionsScreenViewModel;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderSuggestionsScreenAdapter extends AdapterBase {
    private XLEButton advanceButton;
    private ViewGroup emptyListHeaderContainer;
    private FrameLayout listHeaderContainer;
    private ViewGroup listHeaderGroup;
    private FrameLayout loadingOverlay;
    private CustomTypefaceTextView subtitleTextView;
    private FriendFinderSuggestionsListAdapter suggestionsListAdapter;
    private XLEListView suggestionsListView;
    private CustomTypefaceTextView titleTextView;
    private FriendFinderSuggestionsScreenViewModel viewModel;

    public FriendFinderSuggestionsScreenAdapter(FriendFinderSuggestionsScreenViewModel viewModel) {
        super(viewModel);
        this.viewModel = viewModel;
        this.titleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_suggestions_title);
        this.subtitleTextView = (CustomTypefaceTextView) findViewById(R.id.friendfinder_suggestions_subtitle);
        this.emptyListHeaderContainer = (ViewGroup) findViewById(R.id.friendfinder_suggestions_empty_header_container);
        this.listHeaderGroup = (ViewGroup) findViewById(R.id.friendfinder_suggestions_header);
        this.suggestionsListView = (XLEListView) findViewById(R.id.friendfinder_suggestions_list);
        this.advanceButton = (XLEButton) findViewById(R.id.friendfinder_suggestions_button);
        this.loadingOverlay = (FrameLayout) findViewById(R.id.friendfinder_suggestions_loading);
        XLEAssert.assertNotNull(this.titleTextView);
        XLEAssert.assertNotNull(this.subtitleTextView);
        XLEAssert.assertNotNull(this.suggestionsListView);
        XLEAssert.assertNotNull(this.emptyListHeaderContainer);
        XLEAssert.assertNotNull(this.listHeaderGroup);
        XLEAssert.assertNotNull(this.advanceButton);
        XLEAssert.assertNotNull(this.loadingOverlay);
        this.listHeaderContainer = new FrameLayout(XboxTcuiSdk.getActivity());
        this.suggestionsListView.addHeaderView(this.listHeaderContainer, null, false);
        this.suggestionsListView.setChoiceMode(2);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        this.suggestionsListAdapter = new FriendFinderSuggestionsListAdapter(XboxTcuiSdk.getActivity(), R.layout.friendfinder_suggestions_list_item, true);
        this.suggestionsListView.setAdapter((ListAdapter) this.suggestionsListAdapter);
        this.suggestionsListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderSuggestionsScreenAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                parent.getAdapter().getView(position, view, parent);
                int checkedCount = FriendFinderSuggestionsScreenAdapter.this.suggestionsListView.getCheckedItemCount();
                if (checkedCount == 0) {
                    FriendFinderSuggestionsScreenAdapter.this.advanceButton.setText(R.string.FriendFinder_Phone_Next_ButtonText);
                } else if (checkedCount == 1) {
                    FriendFinderSuggestionsScreenAdapter.this.advanceButton.setText(R.string.Profile_Profile_AddFriend);
                } else {
                    FriendFinderSuggestionsScreenAdapter.this.advanceButton.setText(R.string.FriendFinder_AddFriends);
                }
            }
        });
        this.advanceButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.FriendFinderSuggestionsScreenAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SparseBooleanArray sparseCheckedPositions = FriendFinderSuggestionsScreenAdapter.this.suggestionsListView.getCheckedItemPositions();
                ArrayList<Integer> checkedPositions = new ArrayList<>();
                for (int i = 0; i < FriendFinderSuggestionsScreenAdapter.this.suggestionsListAdapter.getCount() + 1; i++) {
                    if (sparseCheckedPositions.get(i)) {
                        checkedPositions.add(Integer.valueOf(i - 1));
                    }
                }
                if (checkedPositions.size() > 0) {
                    FriendFinderSuggestionsScreenAdapter.this.viewModel.addSuggestions(checkedPositions);
                } else {
                    FriendFinderSuggestionsScreenAdapter.this.viewModel.navigateToSkip();
                }
            }
        });
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    protected void updateViewOverride() {
        this.loadingOverlay.setVisibility(this.viewModel.isBusy() ? 0 : 8);
        this.titleTextView.setText(this.viewModel.getTitle());
        this.subtitleTextView.setText(this.viewModel.getSubtitle());
        this.suggestionsListAdapter.clear();
        this.suggestionsListAdapter.addAll(this.viewModel.getSuggestions());
        this.suggestionsListAdapter.notifyDataSetChanged();
        this.emptyListHeaderContainer.removeAllViews();
        this.listHeaderContainer.removeAllViews();
        if (this.suggestionsListAdapter.getCount() > 0) {
            this.listHeaderContainer.addView(this.listHeaderGroup);
        } else {
            this.emptyListHeaderContainer.addView(this.listHeaderGroup);
        }
    }
}
