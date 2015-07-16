.class public final Lald$a;
.super Lakw$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lald;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public hasLinks:Z

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lakw$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public final a()Lald;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lald;

    invoke-direct {v0, p0}, Lald;-><init>(Lald$a;)V

    return-object v0
.end method
