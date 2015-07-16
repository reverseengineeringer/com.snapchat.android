.class public final Latl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbhs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lbhs;

    invoke-direct {v0}, Lbhs;-><init>()V

    invoke-direct {p0, v0}, Latl;-><init>(Lbhs;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lbhs;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Latl;->a:Lbhs;

    .line 23
    return-void
.end method
