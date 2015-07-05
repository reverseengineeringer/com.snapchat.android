.class public final Lawd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lavx;Lawf;[Lavy;)Lawd;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lawd;

    invoke-direct {v0, p0, p1, p2}, Lawd;-><init>(Lavx;Lawf;[Lavy;)V

    return-object v0
.end method
