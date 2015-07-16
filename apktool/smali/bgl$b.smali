.class public final Lbgl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbgl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbgl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 56
    mul-int/lit8 v0, p1, 0x2

    return v0
.end method
