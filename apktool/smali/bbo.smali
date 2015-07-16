.class public final Lbbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUS:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lbek;

    invoke-direct {v0}, Lbek;-><init>()V

    sput-object v0, Lbbo;->BUS:Lcom/squareup/otto/Bus;

    return-void
.end method

.method public static a()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lbbo;->BUS:Lcom/squareup/otto/Bus;

    return-object v0
.end method
