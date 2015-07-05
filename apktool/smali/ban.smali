.class public final Lban;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUS:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lbdk;

    invoke-direct {v0}, Lbdk;-><init>()V

    sput-object v0, Lban;->BUS:Lcom/squareup/otto/Bus;

    return-void
.end method

.method public static a()Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lban;->BUS:Lcom/squareup/otto/Bus;

    return-object v0
.end method
