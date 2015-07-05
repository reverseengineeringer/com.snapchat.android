.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;
.super Lpp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V
    .locals 9
    .param p7    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    .line 1066
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lpp;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    .line 1067
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V
    .locals 0

    .prologue
    .line 1061
    invoke-direct/range {p0 .. p8}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    return-void
.end method


# virtual methods
.method protected a(Lbkh;Lajv;)V
    .locals 1
    .param p2    # Lajv;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 1090
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Lajv;)V

    .line 1092
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1093
    return-void
.end method

.method public final a(Lbkh;Luc;)V
    .locals 2
    .param p1    # Lbkh;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Luc;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lccm;
    .end annotation

    .prologue
    .line 1081
    invoke-super {p0, p1, p2}, Lpp;->a(Lbkh;Luc;)V

    .line 1083
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 1086
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mAction:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 1074
    :cond_0
    invoke-super {p0}, Lpp;->f()V

    .line 1075
    return-void
.end method
