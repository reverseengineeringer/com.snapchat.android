.class final Lahj$5;
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
    .line 617
    iput-object p1, p0, Lahj$5;->a:Lahj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lahj$5;->a:Lahj;

    iget-object v0, v0, Lahj;->a:Lahl$a;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Lahl$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 621
    iget-object v0, p0, Lahj$5;->a:Lahj;

    const/4 v1, 0x0

    iput-object v1, v0, Lahj;->e:Ljava/lang/Runnable;

    .line 622
    return-void
.end method
