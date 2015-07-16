.class final Laox$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqe$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Laox$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbqh;)Lbqh;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to make request on disabled Picasso instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
