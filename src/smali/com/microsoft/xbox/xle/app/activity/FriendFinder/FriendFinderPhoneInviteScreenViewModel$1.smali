.class Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;
.super Ljava/lang/Object;
.source "FriendFinderPhoneInviteScreenViewModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;->this$0:Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;)I
    .locals 2
    .param p1, "lhs"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;
    .param p2, "rhs"    # Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    .prologue
    .line 38
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    iget-object v1, p2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    check-cast p2, Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/FriendFinder/FriendFinderPhoneInviteScreenViewModel$1;->compare(Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;Lcom/microsoft/xbox/service/network/managers/friendfinder/PhoneContactInfo$Contact;)I

    move-result v0

    return v0
.end method
