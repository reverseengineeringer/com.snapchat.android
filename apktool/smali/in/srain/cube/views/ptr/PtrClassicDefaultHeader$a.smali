.class final Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

.field private b:Z


# direct methods
.method private constructor <init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;B)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;-><init>(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->a(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->b:Z

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->run()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;)V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->b:Z

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->b(Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;)V

    .line 283
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->b:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader$a;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    :cond_0
    return-void
.end method
