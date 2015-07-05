.class final Lpw$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpw;->a(Luc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpw;


# direct methods
.method constructor <init>(Lpw;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lpw$3;->this$0:Lpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lpw$3;->this$0:Lpw;

    invoke-static {v0}, Lpw;->d(Lpw;)J

    .line 256
    iget-object v0, p0, Lpw$3;->this$0:Lpw;

    invoke-virtual {v0}, Lpw;->f()V

    .line 257
    return-void
.end method
