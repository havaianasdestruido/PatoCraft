package com.microsoft.xbox.xle.app.adapter;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.microsoft.xbox.service.model.friendfinder.FriendFinderSuggestionModel;
import com.microsoft.xbox.service.network.managers.IPeopleHubResult;
import com.microsoft.xbox.toolkit.JavaUtil;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLERoundedUniversalImageView;
import com.microsoft.xbox.toolkit.ui.XLEUniversalImageView;
import com.microsoft.xbox.xle.app.FriendFinderSettings;
import com.microsoft.xbox.xle.app.XLEUtil;
import java.net.URI;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderSuggestionsListAdapter extends ArrayAdapter<FriendFinderSuggestionModel> {
    private boolean containsHeader;
    private URI facebookImageUri;

    public FriendFinderSuggestionsListAdapter(Context context, int resource, boolean containsHeader) {
        super(context, resource);
        this.containsHeader = containsHeader;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        int i = R.color.transparent;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(com.microsoft.xboxtcui.R.layout.friendfinder_suggestions_list_item, parent, false);
            viewHolder = new ViewHolder();
            viewHolder.gamerpicImageView = (XLERoundedUniversalImageView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_image);
            viewHolder.iconImageView = (XLEUniversalImageView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_icon_image);
            viewHolder.gamertagTextView = (CustomTypefaceTextView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_gamertag);
            viewHolder.realNameTextView = (CustomTypefaceTextView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_realname);
            viewHolder.iconTextView = (CustomTypefaceTextView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_icon_text);
            viewHolder.presenceTextView = (CustomTypefaceTextView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_presence);
            viewHolder.checkTextView = (CustomTypefaceTextView) convertView.findViewById(com.microsoft.xboxtcui.R.id.friendfinder_suggestions_item_check);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        FriendFinderSuggestionModel model = getItem(position);
        boolean isChecked = ((ListView) parent).isItemChecked((this.containsHeader ? 1 : 0) + position);
        convertView.setBackgroundResource(isChecked ? com.microsoft.xboxtcui.R.color.white_15_percent : 17170445);
        CustomTypefaceTextView customTypefaceTextView = viewHolder.iconTextView;
        if (!isChecked) {
            i = com.microsoft.xboxtcui.R.color.white_15_percent;
        }
        customTypefaceTextView.setBackgroundResource(i);
        if (model != null) {
            viewHolder.gamerpicImageView.setImageURI2(model.imageUri, com.microsoft.xboxtcui.R.drawable.gamerpic_missing, com.microsoft.xboxtcui.R.drawable.gamerpic_missing);
            XLEUtil.updateTextAndVisibilityIfNotNull(viewHolder.gamertagTextView, model.gamerTag, 0);
            XLEUtil.updateTextAndVisibilityIfNotNull(viewHolder.realNameTextView, model.realName, 0);
            XLEUtil.updateTextAndVisibilityIfNotNull(viewHolder.presenceTextView, model.presence, 0);
            boolean isFacebook = model.recommendationType == IPeopleHubResult.RecommendationType.FacebookFriend;
            viewHolder.iconImageView.setVisibility(isFacebook ? 0 : 4);
            viewHolder.realNameTextView.setVisibility(isFacebook ? 4 : 0);
            viewHolder.iconTextView.setVisibility(isFacebook ? 4 : 0);
            if (isFacebook) {
                XLEUtil.updateTextAndVisibilityIfNotNull(viewHolder.presenceTextView, model.realName, 0);
                if (this.facebookImageUri == null) {
                    String imageUriPath = FriendFinderSettings.getIconBySize(IPeopleHubResult.RecommendationType.FacebookFriend.name(), FriendFinderSettings.IconImageSize.MEDIUM);
                    if (!JavaUtil.isNullOrEmpty(imageUriPath)) {
                        this.facebookImageUri = URI.create(imageUriPath);
                    }
                }
                viewHolder.iconImageView.setImageURI2(this.facebookImageUri);
            }
            viewHolder.checkTextView.setVisibility(isChecked ? 0 : 4);
        }
        return convertView;
    }

    private static class ViewHolder {
        private CustomTypefaceTextView checkTextView;
        private XLERoundedUniversalImageView gamerpicImageView;
        private CustomTypefaceTextView gamertagTextView;
        private XLEUniversalImageView iconImageView;
        private CustomTypefaceTextView iconTextView;
        private CustomTypefaceTextView presenceTextView;
        private CustomTypefaceTextView realNameTextView;

        private ViewHolder() {
        }
    }
}
