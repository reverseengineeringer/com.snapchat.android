.class public final Lbna;
.super Lbmd;
.source "SourceFile"


# instance fields
.field private final a:Lblu;

.field private final b:Lbzw;


# direct methods
.method public constructor <init>(Lblu;Lbzw;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lbmd;-><init>()V

    .line 28
    iput-object p1, p0, Lbna;->a:Lblu;

    .line 29
    iput-object p2, p0, Lbna;->b:Lbzw;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lbna;->a:Lblu;

    invoke-static {v0}, Lbmz;->a(Lblu;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lbzw;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbna;->b:Lbzw;

    return-object v0
.end method
