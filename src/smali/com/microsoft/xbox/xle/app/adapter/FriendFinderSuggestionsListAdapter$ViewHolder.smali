.class Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FriendFinderSuggestionsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamerpicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

.field private gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private presenceTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$1;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->gamerpicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->gamerpicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->iconImageView:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->presenceTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->presenceTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 1
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;)Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
    .locals 0
    .param p0, "x0"    # Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;
    .param p1, "x1"    # Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/FriendFinderSuggestionsListAdapter$ViewHolder;->checkTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    return-object p1
.end method
