.class public Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;
.super Ljava/lang/Object;
.source "MeContactReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/onlineid/userdata/MeContactReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullName"
.end annotation


# instance fields
.field private final _firstName:Ljava/lang/String;

.field private final _lastName:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/onlineid/userdata/MeContactReader;


# direct methods
.method public constructor <init>(Lcom/microsoft/onlineid/userdata/MeContactReader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/microsoft/onlineid/userdata/MeContactReader;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->this$0:Lcom/microsoft/onlineid/userdata/MeContactReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->_firstName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->_lastName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->_firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/microsoft/onlineid/userdata/MeContactReader$FullName;->_lastName:Ljava/lang/String;

    return-object v0
.end method
