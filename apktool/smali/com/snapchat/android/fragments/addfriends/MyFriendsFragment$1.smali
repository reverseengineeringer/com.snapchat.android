.class final Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;I)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;->b:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    iput p2, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;->b:Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment;->t:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget v1, p0, Lcom/snapchat/android/fragments/addfriends/MyFriendsFragment$1;->a:I

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setSelection(I)V

    .line 118
    return-void
.end method
