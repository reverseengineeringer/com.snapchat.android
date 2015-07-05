.class final Lnet/hockeyapp/android/UpdateActivity$2;
.super Lbvp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/UpdateActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/UpdateActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lnet/hockeyapp/android/UpdateActivity$2;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-direct {p0}, Lbvp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    invoke-static {}, Lbvm;->b()Lbvn;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lbvn;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lbvy;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V

    .line 188
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->a()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity$2;->a:Lnet/hockeyapp/android/UpdateActivity;

    invoke-virtual {v0}, Lnet/hockeyapp/android/UpdateActivity;->b()V

    goto :goto_0
.end method
