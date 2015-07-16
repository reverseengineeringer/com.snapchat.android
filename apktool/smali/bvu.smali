.class public final Lbvu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbvt;


# instance fields
.field public a:Lbvt;

.field public b:Lbvu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 106
    .line 108
    :cond_0
    iget-object v0, p0, Lbvu;->a:Lbvt;

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0, p1}, Lbvt;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 112
    :cond_1
    iget-object p0, p0, Lbvu;->b:Lbvu;

    if-nez p0, :cond_0

    .line 113
    return-void
.end method

.method public final a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V
    .locals 8

    .prologue
    .line 150
    .line 152
    :cond_0
    iget-object v0, p0, Lbvu;->a:Lbvt;

    .line 153
    if-eqz v0, :cond_1

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 154
    invoke-interface/range {v0 .. v7}, Lbvt;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBIIFF)V

    .line 156
    :cond_1
    iget-object p0, p0, Lbvu;->b:Lbvu;

    if-nez p0, :cond_0

    .line 157
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lbvu;->a:Lbvt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 117
    .line 119
    :cond_0
    iget-object v0, p0, Lbvu;->a:Lbvt;

    .line 120
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0, p1}, Lbvt;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 123
    :cond_1
    iget-object p0, p0, Lbvu;->b:Lbvu;

    if-nez p0, :cond_0

    .line 124
    return-void
.end method

.method public final c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 128
    .line 130
    :cond_0
    iget-object v0, p0, Lbvu;->a:Lbvt;

    .line 131
    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v0, p1}, Lbvt;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 134
    :cond_1
    iget-object p0, p0, Lbvu;->b:Lbvu;

    if-nez p0, :cond_0

    .line 135
    return-void
.end method

.method public final d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 1

    .prologue
    .line 139
    .line 141
    :cond_0
    iget-object v0, p0, Lbvu;->a:Lbvt;

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0, p1}, Lbvt;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 145
    :cond_1
    iget-object p0, p0, Lbvu;->b:Lbvu;

    if-nez p0, :cond_0

    .line 146
    return-void
.end method
