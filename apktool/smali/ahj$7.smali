.class final Lahj$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahj;


# direct methods
.method constructor <init>(Lahj;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lahj$7;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1034
    const-string v0, "livechat"

    const-string v1, "Running the reconnect task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    iget-object v0, p0, Lahj$7;->a:Lahj;

    iget-object v0, v0, Lahj;->i:Lahh$b;

    sget-object v1, Lahh$b;->b:Lahh$b;

    if-ne v0, v1, :cond_0

    .line 1038
    iget-object v0, p0, Lahj$7;->a:Lahj;

    sget-object v1, Lahh$b;->a:Lahh$b;

    iput-object v1, v0, Lahj;->i:Lahh$b;

    .line 1039
    iget-object v0, p0, Lahj$7;->a:Lahj;

    iget-object v1, p0, Lahj$7;->a:Lahj;

    iget-object v1, v1, Lahj;->h:Lbic;

    invoke-virtual {v0, v1}, Lahj;->a(Lbic;)V

    .line 1041
    :cond_0
    return-void
.end method
