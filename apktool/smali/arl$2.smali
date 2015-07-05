.class final Larl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Larj;

.field final synthetic b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

.field final synthetic c:Larl;


# direct methods
.method constructor <init>(Larl;Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Larl$2;->c:Larl;

    iput-object p2, p0, Larl$2;->a:Larj;

    iput-object p3, p0, Larl$2;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Larl$2;->c:Larl;

    iget-object v0, v0, Larl;->a:Lark;

    iget-object v1, p0, Larl$2;->a:Larj;

    iget-object v2, p0, Larl$2;->b:Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;

    invoke-interface {v0, v1, v2}, Lark;->a(Larj;Lcom/snapchat/android/ui/snapview/SnapViewSessionStopReason;)V

    .line 44
    return-void
.end method
