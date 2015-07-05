.class public final Lany;
.super Lanx;
.source "SourceFile"


# static fields
.field public static a:Lany;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lanx;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lanz;

    invoke-direct {v0, p1, p2}, Lanz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lany;->b:Lanv;

    .line 30
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v0

    iget-object v1, p0, Lany;->b:Lanv;

    invoke-virtual {v0, v1}, Lanw;->a(Lanv;)V

    .line 31
    return-void
.end method

.method public final a(Ljava/lang/String;ZDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 21

    .prologue
    .line 44
    new-instance v3, Lanz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, p11

    move/from16 v19, p12

    invoke-direct/range {v3 .. v19}, Lanz;-><init>(Ljava/lang/String;ZDJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llr;ZLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lany;->b:Lanv;

    .line 47
    invoke-static {}, Lanw;->a()Lanw;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lany;->b:Lanv;

    invoke-virtual {v2, v3}, Lanw;->a(Lanv;)V

    .line 48
    return-void
.end method
