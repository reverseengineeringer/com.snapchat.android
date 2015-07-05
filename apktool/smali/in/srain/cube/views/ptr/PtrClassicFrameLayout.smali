.class public Lin/srain/cube/views/ptr/PtrClassicFrameLayout;
.super Lin/srain/cube/views/ptr/PtrFrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lin/srain/cube/views/ptr/PtrFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a()V

    .line 27
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    .line 31
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->setHeaderView(Landroid/view/View;)V

    .line 32
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {p0, v0}, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a(Lbus;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getHeader()Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    return-object v0
.end method

.method public setLastUpdateTimeKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeKey(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public setLastUpdateTimeRelateObject(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrClassicFrameLayout;->a:Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;

    invoke-virtual {v0, p1}, Lin/srain/cube/views/ptr/PtrClassicDefaultHeader;->setLastUpdateTimeRelateObject(Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method
