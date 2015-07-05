.class public final Lacd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lajt;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v0

    invoke-direct {p0, v0}, Lacd;-><init>(Lajt;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lajt;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lacd;->a:Lajt;

    .line 39
    return-void
.end method
