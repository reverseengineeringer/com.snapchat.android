.class public final Lasm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lbgs;

    invoke-direct {v0}, Lbgs;-><init>()V

    invoke-direct {p0, v0}, Lasm;-><init>(Lbgs;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Lbgs;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lasm;->a:Lbgs;

    .line 23
    return-void
.end method
