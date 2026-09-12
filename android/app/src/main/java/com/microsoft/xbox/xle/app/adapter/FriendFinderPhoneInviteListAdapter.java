package com.microsoft.xbox.xle.app.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.microsoft.xbox.service.network.managers.friendfinder.PhoneContactInfo;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.xle.app.XLEUtil;
import com.microsoft.xboxtcui.R;

/* JADX INFO: loaded from: C:\Users\mcmco\Desktop\patocraft\build\dex\classes.dex */
public class FriendFinderPhoneInviteListAdapter extends ArrayAdapter<PhoneContactInfo.Contact> {
    public FriendFinderPhoneInviteListAdapter(Context context, int resource) {
        super(context, resource);
        XLEAssert.fail("This isn't supported yet.");
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder viewHolder;
        if (convertView == null) {
            convertView = LayoutInflater.from(getContext()).inflate(R.layout.friendfinder_phone_invite_list_item, parent, false);
            viewHolder = new ViewHolder();
            viewHolder.contactNameTextView = (CustomTypefaceTextView) convertView.findViewById(R.id.friendfinder_phone_invite_name);
            viewHolder.onXboxTextView = (CustomTypefaceTextView) convertView.findViewById(R.id.friendfinder_phone_invite_name_onxbox);
            viewHolder.checkTextView = (CustomTypefaceTextView) convertView.findViewById(R.id.friendfinder_phone_invite_checkbox);
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) convertView.getTag();
        }
        PhoneContactInfo.Contact contact = getItem(position);
        boolean isChecked = ((ListView) parent).isItemChecked(position);
        convertView.setBackgroundResource(isChecked ? R.color.XboxOneGreen : android.R.color.transparent);
        if (contact != null) {
            XLEUtil.updateTextAndVisibilityIfNotNull(viewHolder.contactNameTextView, contact.displayName, 0);
            viewHolder.onXboxTextView.setVisibility(contact.isOnXbox ? 0 : 8);
            viewHolder.checkTextView.setVisibility(isChecked ? 0 : 4);
        }
        return convertView;
    }

    private static class ViewHolder {
        private CustomTypefaceTextView checkTextView;
        private CustomTypefaceTextView contactNameTextView;
        private CustomTypefaceTextView onXboxTextView;

        private ViewHolder() {
        }
    }
}
