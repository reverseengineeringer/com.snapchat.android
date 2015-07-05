.class public abstract Ldb;
.super Ldf;
.source "SourceFile"

# interfaces
.implements Lcs;


# annotations
.annotation build Lcd;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldf",
        "<TK;TV;>;",
        "Lcs",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Ldb;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ldf;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ldb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ldb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ldt;

    invoke-direct {v0, p0, p1}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ldb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb",
            "<TV;TK;>;"
        }
    .end annotation
.end method

.method public final synthetic b()Ldc;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Ldb;->a()Ldb;

    move-result-object v0

    invoke-virtual {v0}, Ldb;->e()Ldi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Ldb;->a()Ldb;

    move-result-object v0

    invoke-virtual {v0}, Ldb;->e()Ldi;

    move-result-object v0

    return-object v0
.end method
