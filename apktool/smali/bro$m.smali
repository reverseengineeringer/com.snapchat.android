.class public final Lbro$m;
.super Ljava/lang/Object;

# interfaces
.implements Lbrn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lbro$m;->a:Ljava/lang/Long;

    .line 411
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbro$m;->a:Ljava/lang/Long;

    .line 412
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string v0, "memory_total"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lbro$m;->a:Ljava/lang/Long;

    return-object v0
.end method
