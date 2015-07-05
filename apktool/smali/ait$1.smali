.class final Lait$1;
.super Lon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lait;->a(Lcom/snapchat/android/model/Friend;Lait$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$friend:Lcom/snapchat/android/model/Friend;

.field final synthetic val$listener:Lait$a;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/Friend;Lait$a;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 59
    iput-object p2, p0, Lait$1;->val$listener:Lait$a;

    iput-object p3, p0, Lait$1;->val$friend:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p1}, Lon;-><init>(Lcom/snapchat/android/model/Friend;)V

    return-void
.end method


# virtual methods
.method protected final a(Laku;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Lon;->a(Laku;)V

    .line 63
    iget-object v1, p0, Lait$1;->val$listener:Lait$a;

    sget-object v0, Lait;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lait$1;->val$friend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lait;

    invoke-interface {v1, v0}, Lait$a;->a(Lait;)V

    .line 64
    return-void
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Laku;

    invoke-virtual {p0, p1}, Lait$1;->a(Laku;)V

    return-void
.end method
