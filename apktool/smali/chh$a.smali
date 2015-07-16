.class public final Lchh$a;
.super Lckb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lchh;

.field private b:Lchi;


# direct methods
.method public constructor <init>(Lchh;Lchi;)V
    .locals 0

    .prologue
    .line 2047
    invoke-direct {p0}, Lckb;-><init>()V

    .line 2048
    iput-object p1, p0, Lchh$a;->a:Lchh;

    .line 2049
    iput-object p2, p0, Lchh$a;->b:Lchi;

    .line 2050
    return-void
.end method


# virtual methods
.method public final a()Lchi;
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lchh$a;->b:Lchi;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lchh$a;->a:Lchh;

    iget-wide v0, v0, Lcih;->a:J

    return-wide v0
.end method

.method protected final c()Lchg;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lchh$a;->a:Lchh;

    iget-object v0, v0, Lcih;->b:Lchg;

    return-object v0
.end method
