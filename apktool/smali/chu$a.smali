.class public final Lchu$a;
.super Lckb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lchu;

.field public b:Lchi;


# direct methods
.method public constructor <init>(Lchu;Lchi;)V
    .locals 0

    .prologue
    .line 1270
    invoke-direct {p0}, Lckb;-><init>()V

    .line 1271
    iput-object p1, p0, Lchu$a;->a:Lchu;

    .line 1272
    iput-object p2, p0, Lchu$a;->b:Lchi;

    .line 1273
    return-void
.end method


# virtual methods
.method public final a()Lchi;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lchu$a;->b:Lchi;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lchu$a;->a:Lchu;

    iget-wide v0, v0, Lcih;->a:J

    return-wide v0
.end method

.method protected final c()Lchg;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lchu$a;->a:Lchu;

    iget-object v0, v0, Lcih;->b:Lchg;

    return-object v0
.end method
