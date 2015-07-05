.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    const-string v0, "ProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "profile images - capturing profile photo at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lwr;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V

    invoke-interface {v0, v1}, Lwr;->a(Lvm;)V

    .line 967
    return-void
.end method
