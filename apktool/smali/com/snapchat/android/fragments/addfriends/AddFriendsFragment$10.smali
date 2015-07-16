.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 585
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->A()V

    .line 589
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->j:Lakr;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_GIVEN_ACCESS_TO_CONTACTS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 590
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbcu;

    invoke-direct {v1}, Lbcu;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->y()V

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$10;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->e(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    .line 593
    return-void
.end method
