.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;
.super Lqg;
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
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    .line 1102
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lqg;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    .line 1103
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V
    .locals 0

    .prologue
    .line 1097
    invoke-direct/range {p0 .. p8}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;)V

    return-void
.end method


# virtual methods
.method protected a(Lbli;Lakp;)V
    .locals 1
    .param p2    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 1126
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lakp;)V

    .line 1128
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1129
    return-void
.end method

.method public final a(Lbli;Lus;)V
    .locals 2
    .param p1    # Lbli;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lcdn;
    .end annotation

    .prologue
    .line 1117
    invoke-super {p0, p1, p2}, Lqg;->a(Lbli;Lus;)V

    .line 1119
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 1122
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->mAction:Lcom/snapchat/android/model/FriendAction;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 1110
    :cond_0
    invoke-super {p0}, Lqg;->execute()V

    .line 1111
    return-void
.end method
