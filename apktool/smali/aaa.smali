.class public final Laaa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lakn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    invoke-direct {p0, v0}, Laaa;-><init>(Lakn;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Lakn;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Laaa;->a:Lakn;

    .line 36
    return-void
.end method
