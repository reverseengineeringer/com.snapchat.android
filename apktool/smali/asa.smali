.class public final Lasa;
.super Lasc;
.source "SourceFile"


# instance fields
.field private final b:Laqv;


# direct methods
.method public constructor <init>(Laqv;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lasc;-><init>()V

    .line 18
    iput-object p1, p0, Lasa;->b:Laqv;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "Time"

    return-object v0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lasa;->b:Laqv;

    iget-object v0, v0, Laqv;->b:Landroid/view/View;

    return-object v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lasa;->b:Laqv;

    iget-object v1, v0, Laqv;->a:Lapd;

    const v2, 0x7f040039

    iget-object v3, v0, Laqv;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lapd;->a(ILandroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v0, Laqv;->b:Landroid/view/View;

    .line 34
    return-void
.end method
