.class final Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()V
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
    .line 1050
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v1, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lajx;->z()J

    move-result-wide v2

    iget-object v4, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lawp;

    iget-object v5, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Lajx;

    invoke-static {v1, v2, v3, v4}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;JLawp;)V

    iget-object v1, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    iget-object v2, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x406

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v0, Laol;->c:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1054
    return-void
.end method
