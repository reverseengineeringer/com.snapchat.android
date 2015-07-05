.class public final Lanq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Laje;

.field final b:Lawz;


# direct methods
.method public constructor <init>(Laje;)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 65
    new-instance v0, Lawz;

    invoke-direct {v0}, Lawz;-><init>()V

    invoke-direct {p0, p1, v0}, Lanq$a;-><init>(Laje;Lawz;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Laje;Lawz;)V
    .locals 1
    .param p1    # Laje;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lawz;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laje;

    iput-object v0, p0, Lanq$a;->a:Laje;

    .line 71
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawz;

    iput-object v0, p0, Lanq$a;->b:Lawz;

    .line 72
    return-void
.end method
