.class public interface abstract Lorg/lucasr/twowayview/TwoWayView$OnScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollListener"
.end annotation


# static fields
.field public static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# virtual methods
.method public abstract onScroll(Lorg/lucasr/twowayview/TwoWayView;III)V
.end method

.method public abstract onScrollStateChanged(Lorg/lucasr/twowayview/TwoWayView;I)V
.end method
