.class public final Lbob;
.super Lbne;
.source "SourceFile"


# instance fields
.field private final a:Lbmv;

.field private final b:Lcax;


# direct methods
.method public constructor <init>(Lbmv;Lcax;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbne;-><init>()V

    .line 28
    iput-object p1, p0, Lbob;->a:Lbmv;

    .line 29
    iput-object p2, p0, Lbob;->b:Lcax;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lbob;->a:Lbmv;

    invoke-static {v0}, Lboa;->a(Lbmv;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcax;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbob;->b:Lcax;

    return-object v0
.end method
