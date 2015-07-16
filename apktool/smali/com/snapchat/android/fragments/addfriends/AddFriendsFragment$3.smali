.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$3;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->B()V

    .line 161
    return-void
.end method
