.class final Lcom/snapchat/android/fragments/stories/StoriesAdapter$10$1;
.super Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 752
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10$1;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/FriendAction$BlockReason;B)V

    return-void
.end method


# virtual methods
.method protected final a(Lbli;Lakp;)V
    .locals 2
    .param p2    # Lakp;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 755
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$c;->a(Lbli;Lakp;)V

    .line 756
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10$1;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$10$1;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 757
    return-void
.end method
