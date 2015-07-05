.class final Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laok;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/PickUsernameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lamk;)V
    .locals 3

    .prologue
    .line 135
    invoke-static {p1}, Laol;->a(Lamk;)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    instance-of v0, p1, Land;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/PickUsernameFragment$1;->a:Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    check-cast p1, Land;

    invoke-static {v0, p1}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;->a(Lcom/snapchat/android/fragments/signup/PickUsernameFragment;Land;)V

    .line 142
    :cond_0
    return-void
.end method
