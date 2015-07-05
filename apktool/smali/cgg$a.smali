.class public final Lcgg$a;
.super Lcja;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcgg;

.field private b:Lcgh;


# direct methods
.method public constructor <init>(Lcgg;Lcgh;)V
    .locals 0

    .prologue
    .line 2047
    invoke-direct {p0}, Lcja;-><init>()V

    .line 2048
    iput-object p1, p0, Lcgg$a;->a:Lcgg;

    .line 2049
    iput-object p2, p0, Lcgg$a;->b:Lcgh;

    .line 2050
    return-void
.end method


# virtual methods
.method public final a()Lcgh;
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcgg$a;->b:Lcgh;

    return-object v0
.end method

.method protected final b()J
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcgg$a;->a:Lcgg;

    iget-wide v0, v0, Lchg;->a:J

    return-wide v0
.end method

.method protected final c()Lcgf;
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcgg$a;->a:Lcgg;

    iget-object v0, v0, Lchg;->b:Lcgf;

    return-object v0
.end method
